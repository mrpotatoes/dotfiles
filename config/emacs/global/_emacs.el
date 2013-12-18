; --------------------------------------------------------------------------------
;; Autopair
;;    http://www.emacswiki.org/emacs/AutoPairs
;;    - https://github.com/capitaomorte/autopair
(require 'autopair)

;; --------------------------------------------------------------------------------
;; Copy paste
(require 'pbcopy)
(turn-on-pbcopy)

;; --------------------------------------------------------------------------------
;; Make the mode-line sexy.
(require 'powerline)
;(powerline-center-theme)

(require 'dirtree)

;; --------------------------------------------------------------------------------
;; Buffer cycling.
(require 'bcycle)
(setq bcycle-skip-patterns (cons "^irc\.freenode" bcycle-skip-patterns))
(setq bcycle-skip-patterns (cons "^#" bcycle-skip-patterns))
(define-key my-keys-minor-mode-map (kbd "M-TAB") 'bcycle-next-buffer)
(define-key my-keys-minor-mode-map (kbd "M-`") 'bcycle-previous-buffer)

;; --------------------------------------------------------------------------------
;; IRC and various other communications.
;; todo: Add stuff.

;; --------------------------------------------------------------------------------
;; Eventually this:
;;    - https://github.com/Fuco1/smartparens
(require 'paren)
(show-paren-mode 1)
(set-face-background 'show-paren-match-face (face-background 'default))
(set-face-foreground 'show-paren-match-face "#f30")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)


;(require 'smart-mode-line)
;(if after-init-time (sml/setup)
;  (add-hook 'after-init-hook 'sml/setup))

;; --------------------------------------------------------------------------------
;; Eventually this:
;;    - https://github.com/Fuco1/smartparens
;;    - git@github.com:nschum/highlight-symbol.el.git
;;    - http://www.emacswiki.org/emacs/?action=browse;oldid=HighLight;id=HighlightLibrary
;(require 'highlight-symbol)

;; --------------------------------------------------------------------------------
;; Remove trailing white space.
;;    - http://ergoemacs.org/emacs/elisp_compact_empty_lines.html
(defun xah-clean-whitespace ()
  "Delete trailing whitespace, and replace sequence of newlines into just 2.

Work on whole buffer, or text selection."
  (interactive)
  (let* (
         (bds (get-selection-or-unit 'buffer))
         (p1 (elt bds 1))
         (p2 (elt bds 2))
         )
    (save-excursion
      (save-restriction
        (narrow-to-region p1 p2)
        (progn
          (goto-char (point-min))
          (while (search-forward-regexp " +\n" nil "noerror")
            (replace-match "\n") ))
        (progn
          (goto-char (point-min))
          (while (search-forward-regexp "\n\n\n+" nil "noerror")
            (replace-match "\n\n") )) )) ))

(add-hook 'before-save-hook 'delete-trailing-whitespace)


(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; --------------------------------------------------------------------------------
;; Documentation mode.
;;    - http://www.emacswiki.org/emacs/DocMode
(require 'doc-mode)
(add-hook 'c-mode-common-hook 'doc-mode)
