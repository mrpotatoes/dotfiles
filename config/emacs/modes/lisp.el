;; --------------------------------------------------------------------------------
;; Lisp Mode
;;    - http://www.emacswiki.org/emacs/EmacsLispMode
;;    - http://www.emacswiki.org/emacs/ParEdit
(add-hook 'emacs-lisp-mode-hook
  (lambda ()

    ;; Use spaces, not tabs.
    (setq indent-tabs-mode nil)

    ;; Set the tabwidth to 2.
    (setq tab-width 2)

    ;; I want the parens to be auto paired always.
    (autopair-mode t)

    (setq c-default-style "bsd" c-basic-offset 2)

    ;; Keep M-TAB for `completion-at-point'
    (define-key flyspell-mode-map "\M-\t" nil)

    ;; Pretty-print eval'd expressions.
    (define-key emacs-lisp-mode-map "\C-x\C-e" 'pp-eval-last-sexp)

    ;; Recompile if .elc exists.
    (add-hook (make-local-variable 'after-save-hook)
      (lambda ()
        (byte-force-recompile default-directory)))
    ;(define-key emacs-lisp-mode-map "\r" 'reindent-then-newline-and-indent)
    ))

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)

(add-to-list 'auto-mode-alist '("\\.el$" . emacs-lisp-mode-hook))