(define (add-to-end l element)
  (append l (list element)))

(define (file->list-of-lines filename)
  (let ([file (open-input-file filename)])
    (define (loop result)
      (if (port-eof? file)
          result
          (loop (add-to-end result (get-line file)))))
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
          (loop (cdr next) (add-to-end result (car next))))))
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

(define (get-opcode-hash)
  (let ([opcode-mappings
         '((add "0000000000000000")
           (dup "0000000000000001")
           (drop "0000000000000010")
           (halt "0000000000000011")
           (getin "0000000000000100")
           (js "0000000000000101")
           (over "0000000000000110")
           (or "0000000000000111")
           (return "0000000000001000")
           (slt "0000000000001001")
           (sub "0000000000001010")
           (swap "0000000000001011")
           (getin2 "0000000000001100")
           
           (beq "0001")
           (bez "0010")
           (j "0011")
           (jal "0100")
           (pop "0101")
           (push "0110")
           (pushi "0111")
           (lui "1000"))]
        [hash (make-eq-hashtable)])
    (for-each
     (lambda (pair) (hashtable-set! hash (car pair) (cadr pair)))
     opcode-mappings) 
    hash))

(define (number->bit-string number places)
  (define (sign-extend str)
    (let ([l (string-length str)])
      (string-append (make-string (max (- places l) 0) (string-ref str 0)) str)))
  (define (flip-bits str)
    (list->string (map (lambda (char) (if (char=? char #\0) #\1 #\0)) (string->list str))))
  (define (loop n result)
    (cond
     [(= 0 n) (string-append "0" result)]
     [else
      (loop (div n 2) (string-append (number->string (mod n 2)) result))]))
  (if (>= number 0)
      (let ([result (sign-extend (loop number ""))])
        (if (> (string-length result) places)
            'overflow
            result))
      (let ([result (sign-extend (flip-bits (loop (1- (- number)) "")))])
        (if (> (string-length result) places)
            'overflow
            result))))

(define (bit-string->number bit-string)
  (define (loop str result)
    (if (string=? str "")
        result
        (loop
         (substring str 1 (string-length str))
         (+ result (if (char=? #\1 (string-ref str 0)) (expt 2 (1- (string-length str))) 0)))))
  (loop
   (substring bit-string 1 (string-length bit-string))
   (if (= 1 (string->number (string (string-ref bit-string 0)))) (- (expt 2 (1- (string-length bit-string)))) 0)))

;;(let ([places 12])
;;  (do ((x (- (expt 2 (1- places))) (1+ x))) ((= x (expt 2 (1- places))))
;;    (when (not (= x (bit-string->number (number->bit-string x places))))
;;      (printf "~s\n" x)))
;;  (printf "done\n"))

(define (assemble-processed processed)
  (let ([instructions (car processed)]
        [args (cadr processed)]
        [labels (caddr processed)]
        [opcode-hash (get-opcode-hash)])
    (define (loop result i)
      (if (>= i (vector-length instructions))
          result
          (let* ([inst (vector-ref instructions i)]
                 [arg (vector-ref args i)]
                 [opcode (hashtable-ref opcode-hash inst -1)])
            (if (= 4 (string-length opcode))
                (let ([inst-binary
                       (string-append opcode
                                      (if (symbol? arg)
                                          (substring (number->bit-string (* (hashtable-ref labels arg -1) 2) 16) 3 15)
                                          (number->bit-string arg 12)))])
                  (when (not (= 16 (string-length inst-binary)))
                    (printf "wrong size\n"))
                  ;;(printf "~a ~a: ~s\n" inst (if arg arg "") inst-binary)
                  (loop
                   (add-to-end result inst-binary)
                   (1+ i)))
                (begin
                  ;;(printf "~a ~a: ~s\n" inst (if arg arg "") opcode)
                  (loop
                   (add-to-end result opcode)
                   (1+ i)))))))
    (loop '() 0)))

(define (16-bit->hex str)
  (let ([order '#("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "A" "B" "C" "D" "E" "F")])
    (define (4-bit->hex str)
      (vector-ref order (string->number str 2)))
    (string-append
     (4-bit->hex (substring str 0 4))
     (4-bit->hex (substring str 4 8))
     (4-bit->hex (substring str 8 12))
     (4-bit->hex (substring str 12 16)))))

(define (assemble-file filename)
  (assemble-processed (process-instructions (file->instructions filename))))

(define (assemble-string str)
  (assemble-processed (process-instructions (string->instructions str))))

(define rel-prime
  "MAIN:
	getin
	jal RELPRIME
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

(let ([args (command-line)])
  (if (< (length args) 2)
      (printf "not enough arguments\n")
      (if (and (> (length args) 2) (string=? (caddr args) "--binary"))
          (for-each
           (lambda (x) (printf "~d\n" x))
           (assemble-file (cadr args)))
          (for-each
           (lambda (x) (printf "~d\n" x))
           (map 16-bit->hex (assemble-file (cadr args)))))))
