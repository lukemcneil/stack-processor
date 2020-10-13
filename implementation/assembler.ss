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

(vector-length (hashtable-keys (get-opcode-hash)))

(define (assemble-processed processed)
  (let ([instructions (car processed)]
        [args (cadr processed)]
        [labels (caddr processed)]
        [opcode-hash (get-opcode-hash)])
  (define (loop result i)
    (if (>= i (vector-length instructions))
        'done
        (let* ([inst (vector-ref instructions i)]
              [arg (vector-ref args i)]
              [opcode (hashtable-ref opcode-hash inst -1)])
          (if (= 4 (string-length opcode))
              (printf "~a ~a: ~s\n" inst (if arg arg "") (string-append opcode (number->string arg)))
              (printf "~a ~a: ~s\n" inst (if arg arg "") opcode))
          (loop
           (string-append result "\n" opcode)
           (1+ i)))))
  (loop "" 0)))

(assemble-processed (process-instructions (file->instructions "simple.asm")))
