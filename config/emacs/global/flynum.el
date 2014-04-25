
;; -----------------------------------------------------------------------------
;; Fly Num
(setq linum-format 'flynum-format)
(add-hook 'flycheck-after-syntax-check-hook 'flynum-build-list)
(add-hook 'flycheck-after-syntax-check-hook 'linum-update-current)
 
(defun flynum-build-list ()
  (interactive)
  (let ((num-lines (count-lines (point-min) (point-max))))
    (when (> num-lines 0)
        (setq-local flynum-vector (make-vector num-lines nil))
        (loop for n from 1 to num-lines do
              (if (string-equal "error" (flynum-error-level n))
                  (aset flynum-vector (1- n) "error")
                (if (string-equal "warning" (flynum-error-level n))
                    (aset flynum-vector (1- n) "warning")))))))
 
(defun num-to-format (line)
  (if (< line 10)
      (concat "  " (number-to-string line) " ")
    (if (< line 100)
        (concat " " (number-to-string line) " ")
      (concat (number-to-string line) " "))))
 
(defun flynum-format (line)
  (if (string-equal "error" (aref flynum-vector (1- line)))
      (propertize (num-to-format line) 'face '(:foreground "black" :background "red"))
    (if (string-equal "warning" (aref flynum-vector (1- line)))
        (propertize (num-to-format line) 'face '(:foreground "black" :background "yellow"))
      (propertize (num-to-format line) 'face 'linum))))
 
(defun flynum-error-level (line)
  (let ((foundp nil)
        (errorp nil)
        (warningp nil))
    (catch 'break
      (loop for error in flycheck-current-errors do
            (setq foundp (= line (flycheck-error-line error)))
            (setq errorp (string-equal "error" (flycheck-error-level error)))
            (setq warningp (string-equal "warning" (flycheck-error-level error)))
            (if (and foundp errorp)
                (throw 'break "error"))
            (if (and foundp warningp)
                (throw 'break "warning"))))))