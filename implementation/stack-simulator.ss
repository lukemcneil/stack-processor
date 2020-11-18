(define (add stack return-stack pc labels)
  (cons* (cons (+ (cadr stack) (car stack)) (cddr stack)) (1+ pc) return-stack))

(define (sub stack return-stack pc labels)
  (cons* (cons (- (cadr stack) (car stack)) (cddr stack)) (1+ pc) return-stack))

(define (div stack return-stack pc labels)
  (cons* (cons (/ (cadr stack) (car stack)) (cddr stack)) (1+ pc) return-stack))

(define (pushi imm stack return-stack pc labels)
  (cons* (cons imm stack) (1+ pc) return-stack))

(define (j label stack return-stack pc labels)
  (cons* stack (hashtable-ref labels label -1) return-stack))

(define (getin stack return-stack pc labels)
  (cons* (cons (get-datum (current-input-port)) stack) (1+ pc) return-stack))

(define (jal label stack return-stack pc labels)
  (cons* stack (hashtable-ref labels label -1) (cons (1+ pc) return-stack)))

(define (over stack return-stack pc labels)
  (cons* (cons (cadr stack) stack) (1+ pc) return-stack))

(define (dup stack return-stack pc labels)
  (cons* (cons (car stack) stack) (1+ pc) return-stack))

(define (drop stack return-stack pc labels)
  (cons* (cdr stack) (1+ pc) return-stack))

(define (swap stack return-stack pc labels)
  (cons* (cons* (cadr stack) (car stack) (cddr stack)) (1+ pc) return-stack))

(define (slt stack return-stack pc labels)
  (cons* (cons (if (< (cadr stack) (car stack)) 1 0) (cddr stack)) (1+ pc) return-stack))

(define (sltn stack return-stack pc labels)
  (cons* (cons (if (< (cadr stack) (car stack)) 1 0) stack) (1+ pc) return-stack))

(define (bez label stack return-stack pc labels)
  (cons* (cdr stack)
         (if (= (car stack) 0)
             (hashtable-ref labels label -1)
             (1+ pc))
         return-stack))

(define (bezn label stack return-stack pc labels)
  (cons* stack
         (if (= (car stack) 0)
             (hashtable-ref labels label -1)
             (1+ pc))
         return-stack))

(define (beq label stack return-stack pc labels)
  (cons* (cddr stack)
         (if (= (car stack) (cadr stack))
             (hashtable-ref labels label -1)
             (1+ pc))
         return-stack))

(define (return stack return-stack pc labels)
  (cons* stack (car return-stack) (cdr return-stack)))

(define (halt stack return-stack pc labels)
  (cons* stack -1 return-stack))

;; (define (process program)
;;   (let ([inst-i 0]
;;         [arg-i -1]
;;         [label-i -1]
;;         [inst-count 0]
;;         [instructions '()]
;;         [args '()]
;;         [labels (make-eq-hashtable)])
;;     (for-each
;;      (lambda (ch i)
;;        (when (char=? ch #\:)
;;          (set! label-i (1+ i)))
;;        (when (char=? ch #\ )
;;          (set! arg-i (1+ i)))
;;        (when (char=? ch #\newline)
;;          (when (not (= label-i -1))
;;            (hashtable-set! labels (string->symbol (substring program inst-i (1- label-i))) inst-count))
;;          (let ([inst-symbol (string->symbol (substring program
;;                                                        (if (= label-i -1) inst-i label-i)
;;                                                        (if (= arg-i -1)
;;                                                            i
;;                                                            (1- arg-i))))])
;;            (set!
;;             instructions        
;;             (append             
;;              instructions       
;;              (list inst-symbol)))
;;            (set!
;;             args                         
;;             (append                      
;;              args                         
;;              (if (= -1 arg-i)             
;;                  '(#f)                        
;;                  (list                        
;;                   ((if (or (symbol=? 'j inst-symbol) (symbol=? 'beq inst-symbol) (symbol=? 'bez inst-symbol) (symbol=? 'jal inst-symbol))
;;                        string->symbol               
;;                        string->number) (substring program arg-i i))))))
;;            (set! label-i -1)
;;            (set! arg-i -1)
;;            (set! inst-i (1+ i))
;;            (set! inst-count (1+ inst-count)))))
;;      (string->list program)
;;      (iota (string-length program)))
;;    (list (list->vector instructions) (list->vector args) labels)))

(define (file->list-of-lines filename)
  (let ([file (open-input-file filename)])
    (define (loop result)
      (if (port-eof? file)
          result
          (loop (append result (list (get-line file))))))
    (loop '())))

(define (string->list-of-lines str)
  (define (loop str result)
    (define (get-next-line str)
      (define (iter str result)
        (cond
         [(string=? "" str) (cons result "")]
         [(char=? (string-ref str 0) #\newline) (cons result (substring str 1 (string-length str)))]
         [else (iter (substring str 1 (string-length str)) (string-append result (substring str 0 1)))]))
      (iter str ""))
    (let ([next (get-next-line str)])
      (if (string=? "" (car next))
          result
          (loop (cdr next) (append result (list (car next)))))))
  (loop str '()))

(define (add-parens list-of-lines)
  (map
   (lambda (str) (string-append "(" str ")"))
   list-of-lines))

(define (file->instructions filename)
  (read (open-string-input-port
         (apply string-append
                (append '("(") (add-parens (file->list-of-lines filename)) '(")"))))))

(define (string->instructions str)
  (read
   (open-string-input-port
    (apply string-append (append '("(") (add-parens (string->list-of-lines str)) '(")"))))))

(define (add-to-end l element)
  (append l (list element)))

(define (process-instructions read-result)
  (let ([labels (make-eq-hashtable)])
    (define (loop data instructions args i)
      (define (loop-again inst arg)
        (loop
         (cdr data)
         (add-to-end instructions inst)
         (add-to-end args arg)
         (1+ i)))
      (if (null? data)
          (list (list->vector instructions) (list->vector args) labels)
          (let* ([next (car data)]
                 [s (symbol->string (car next))])
            (cond
             [(= (length next) 1)
              (if (char=? (string-ref s (1- (string-length s))) #\:)
                  (begin
                    (hashtable-set! labels (string->symbol (substring s 0 (1- (string-length s)))) i)
                    (loop (cdr data) instructions args i))
                  (loop-again (car next) #f))]
             [(= (length next) 2)
              (if (char=? (string-ref s (1- (string-length s))) #\:)
                  (begin
                    (hashtable-set! labels (string->symbol (substring s 0 (1- (string-length s)))) i)
                    (loop-again (cadr next) #f))
                  (loop-again (car next) (cadr next)))]
             [(= (length next) 3)
              (hashtable-set! labels (string->symbol (substring s 0 (1- (string-length s)))) i)
              (loop-again (cadr next) (caddr next))]))))
    (loop read-result '() '() 0)))

(define (simulate data starting-stack)
  (let* ([processed (process-instructions data)]
         [instructions (car processed)]
         [args (cadr processed)]
         [labels (caddr processed)])
    (define (loop stack return-stack pc max-stack-size max-return-stack-size instruction-count)
      (let* ([inst (vector-ref instructions pc)]
             [arg (vector-ref args pc)]
             [result (apply
                      (eval inst)
                      (append (if arg (list arg) '()) (list stack return-stack pc labels)))]
             [stack-new (car result)]
             [pc-new (cadr result)]
             [return-stack-new (cddr result)])
        ;;(printf "~s ~s\n  stack: ~s\n  return: ~s\n" inst arg stack-new return-stack-new)
        ;;(printf "~s\n" (length stack-new))
        (if (and (< pc-new (vector-length instructions)) (> pc-new 0))
            (loop stack-new return-stack-new pc-new
                  (max (length stack-new) max-stack-size)
                  (max (length return-stack-new) max-return-stack-size)
                  (1+ instruction-count))
            (begin
              (printf "max-stack-size: ~s\nmax-return-stack-size: ~s\ninstruction-count: ~s\n"
                      max-stack-size max-return-stack-size instruction-count)
              (printf "final-stack: ~d\n" stack-new)
              stack-new))))
    ;;(printf "~s\n" '())
    (loop starting-stack '() 0 0 0 0)))

(define rel-prime
  "	jal RELPRIME
	halt
RELPRIME:
	pushi 2
RPLOOP:
	over
	over
	jal GCD
	pushi 1
	beq RETURNM
	pushi 1
	add
	j RPLOOP
RETURNM:
	swap
	drop
	return
GCD:
	over
	bez RETURNB
LOOP:
	dup
	bez RETURNA
	over
	over
	swap
	slt
	bez ELSE
	swap
	over
	sub
	swap
	j LOOP
ELSE:
	over
	sub
	j LOOP
RETURNB:
	swap
	drop
	return
RETURNA:
	drop
	return")

(define for-loop
  "	pushi 1
	pushi 0
LOOP:
	dup
	pushi 5
	slt
	pushi 1
	beq OP
	drop
	halt
OP:
	pushi 1
	add
	swap
	pushi 1
	add
	swap
	j LOOP")

(define return-chain
  "	pushi 2
	jal F1
	halt
F1:
	jal F2
	return
F2:
	jal F3
	return
F3:
	pushi 1
	add
	return")

(define simple
  "	pushi 1
	pushi 2
	add")

;;(time (simulate (process rel-prime) '(30030)))
;;(file->instructions "example-programs/rel-prime.asm")
;;(string->instructions rel-prime)

;;(time (simulate (file->instructions "example-assembly-programs/fact.asm") '(61)))
;;(time (simulate (file->instructions "example-assembly-programs/rel-prime.asm") '(30030)))
;;(time (simulate (string->instructions rel-prime) '(30030)))

(let ([args (command-line)])
  (if (< (length args) 2)
      (printf "not enough arguments\n")
      (time (simulate (file->instructions (cadr args)) (map string->number (cddr args))))))

;;(simulate (file->instructions "/home/luke/csse232/project/2021a-project-2v/implementation/example-assembly-programs/rel-prime.asm") '(5040))
