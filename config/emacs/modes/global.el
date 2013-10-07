;; --------------------------------------------------------------------------------
;; This is the hide/show functionality as described in here:
;;    - http://www.emacswiki.org/emacs/HideShow
;; May want to consider something that will allow me to do it like org mode. 
;;    - https://github.com/shanecelis/hideshow-org/tree/master
(require 'hideshow-org)

;(add-hook 'c-mode-common-hook   'hs-minor-mode)
;(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;(add-hook 'lisp-mode-hook       'hs-minor-mode)
;(add-hook 'perl-mode-hook       'hs-minor-mode)
;(add-hook 'sh-mode-hook         'hs-minor-mode)

(add-hook 'java-mode-hook       'hs-org/minor-mode)
(add-hook 'php-mode-hook       'hs-org/minor-mode)
(add-hook 'js-mode-hook       'hs-org/minor-mode)

;; --------------------------------------------------------------------------------
;; Narrowing
;;    - http://www.gnu.org/software/emacs/manual/html_node/emacs/Narrowing.html
;;
;; C-x n n
;;    Narrow down to between point and mark (narrow-to-region). 
;; C-x n w
;;    Widen to make the entire buffer accessible again (widen). 
;; C-x n p
;;    Narrow down to the current page (narrow-to-page). 
;; C-x n d
;;    Narrow down to the current defun (narrow-to-defun).

;; --------------------------------------------------------------------------------
;; Indentation
;;    - http://stackoverflow.com/questions/11623189/how-to-bind-keys-to-indent-unindent-region-in-emacs
;;    - http://stackoverflow.com/questions/6918134/how-do-i-indent-n-spaces-in-emacs
;;    - http://stackoverflow.com/questions/2585091/emacs-bulk-indent-for-python
;;    - http://www.emacswiki.org/emacs/IndentingText
(defun my-indent-region (N)
  (interactive "p")
  (if mark-active
      (progn (indent-rigidly (min (mark) (point)) (max (mark) (point)) (* N 2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if mark-active
      (progn (indent-rigidly (min (mark) (point)) (max (mark) (point)) (* N -2))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(global-set-key ">" 'my-indent-region)
(global-set-key "<" 'my-unindent-region)

;; --------------------------------------------------------------------------------
;; Highlight region replace
;;     - http://stackoverflow.com/questions/2627289/how-to-replace-a-region-in-emacs-with-yank-buffer-contents
(delete-selection-mode 1)

