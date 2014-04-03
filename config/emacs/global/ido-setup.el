;; --------------------------------------------------------------------------------
;; Ido mode
;;   - http://www.masteringemacs.org/articles/2010/10/10/introduction-to-ido-mode/

; Require the modules.
(require 'ido)
(require 'ido-vertical-mode)

; Enable the modes.
(ido-mode 1)
(ido-vertical-mode 1)

;; Some IDO setup.
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
;(setq ido-use-filename-at-point 'guess) 
(setq ido-file-extensions-order '(".php" ".moule" ".install" ".js" ".xml" ".el"))

; Doing some setup.
(add-hook 'ido-setup-hook 
  (lambda ()
    (define-key ido-completion-map (kbd "C-w") 'ido-delete-backward-updir)
    (define-key ido-completion-map (kbd "TAB") 'ido-exit-minibuffer)))