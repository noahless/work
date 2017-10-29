;;print
(message "my list is %S" (list 8 2 3))
;; %s is for any lisp expression

(expt 3 2)
;;3^2


;;type convert
;;also use the format function to convert
(string-to-number "3")

(number-to-string 4)


;;= is merely used to number
(eql "also" "also")
(equal "also" "also")


;;variables
;;global-variables 
(setq a 1 b 2 c "string" );; and return the last value
;;local-variables
(let ((a 3) (b 4))
  (return (+ a b))
