;; --------------------------------------------------------------------------------
;; TEXT MODE.
(defun my-text-mode-hook ()
   "When in text-mode, remove linum and turn on visual-line-mode"
   (visual-line-mode))

  ;; UNCOMMENT THE FOLLOWING LINE TO SHOW DISABLE LINE NUMBERS. 
  ;(linum-mode -1))
(add-hook 'text-mode-hook 'my-text-mode-hook)

; The column line that we'll be setting to either 80 or 120
; http://www.emacswiki.org/FillColumnIndicator
(require 'fill-column-indicator)
(setq fci-rule-width 1)
(setq fci-rule-color "darkblue")
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(add-to-list 'auto-mode-alist '("\\.ini$" . text-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . text-mode))

