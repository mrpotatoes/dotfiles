;; --------------------------------------------------------------------------------
;; Company mode
;;  - https://github.com/company-mode/company-mode
;;  - http://company-mode.github.io/
;;  - https://github.com/zmyrgel/zf-mode
;;  - https://github.com/nsf/gocode/tree/master/emacs-company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(setq company-backends
  '(company-elisp
    company-ropemacs
    company-etags
    company-dabbrev-code
    company-keywords
    company-files
    company-dabbrev
))

; Keyboard Bindings.
(global-set-key (kbd "M-r") 'company-complete-common)

(setq company-idle-delay 0.3)
(setq company-tooltip-limit 20)
(setq company-minimum-prefix-length 2)
(setq company-echo-delay 0)
(setq company-auto-complete nil)

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