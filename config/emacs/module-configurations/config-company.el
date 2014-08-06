;; --------------------------------------------------------------------------------
;; Company mode
;;  - https://github.com/company-mode/company-mode
;;  - http://company-mode.github.io/
;;  - https://github.com/zmyrgel/zf-mode
;;  - https://github.com/nsf/gocode/tree/master/emacs-company
(require 'company)
(require 'ggtags)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-backends
  '(company-elisp
    company-ropemacs
    company-gtags
    company-dabbrev-code
    company-keywords
    company-files
    company-dabbrev
))

; Keyboard Bindings.
; (global-set-key (kbd "M-r") 'company-complete-common)
;; --------------------------------------------------------------------------------
; http://suchang.net/blog/2008-06.html
; (define-key company-mode-map [(tab)] 'indent-for-tab-command)
; (define-key company-mode-map [(meta j)] 'company-cycle)
; (define-key company-mode-map [(meta k)] 'company-cycle-backwards)
; (define-key company-mode-map [(backtab)] 'company-expand-common)
; (define-key company-mode-map (kbd "M-SPC") 'company-expand-anything)
; (define-key company-mode-map [(meta return)] 'company-expand-common) 

(setq company-idle-delay 0.3)
(setq company-tooltip-limit 20)
(setq company-minimum-prefix-length 2)
(setq company-echo-delay 0)
(setq company-auto-complete nil)

; (define-key company-mode-map (kbd "C-n") 'company-cycle)
; (define-key company-mode-map [(meta k)] 'company-cycle-backwards)

(global-company-mode 1)

;; (add-to-list 'company-backends 'company-ispell t)
;; (setq company-backends (remove 'company-ropemacs company-backends))

; (custom-set-faces
;  '(company-preview
;    ((t (:foreground "darkgray" :underline t))))
;  '(company-preview-common
;    ((t (:inherit company-preview))))
;  '(company-tooltip
;    ((t (:background "lightgray" :foreground "black"))))
;  '(company-tooltip-selection
;    ((t (:background "steelblue" :foreground "white"))))
;  '(company-tooltip-common
;    ((((type x)) (:inherit company-tooltip :weight bold))
;     (t (:inherit company-tooltip))))
;  '(company-tooltip-common-selection
;    ((((type x)) (:inherit company-tooltip-selection :weight bold))
;     (t (:inherit company-tooltip-selection)))))




