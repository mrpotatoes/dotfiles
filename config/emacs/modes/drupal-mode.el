;; --------------------------------------------------------------------------------
;; Drupal PHP Development. Eventually make this PHP/Java development & coding standards.
;;  - http://how-to.linuxcareer.com/customizing-emacs-for-development
;(defun drupal-mode ()
;  "Drupal php-mode."
;  (interactive)
;  (php-mode)
;  (message "Drupal mode activated.")
;  (set 'tab-width 2)
;  (set 'c-basic-offset 2)
;  (set 'indent-tabs-mode nil)
;  (c-set-offset 'case-label '+)
;  (c-set-offset 'arglist-intro '+) ; for FAPI arrays and DBTNG
;  (c-set-offset 'arglist-cont-nonempty 'c-lineup-math) ; for DBTNG fields and values
;  ; More Drupal-specific customizations here
;)
;
;(defun setup-php-drupal ()
;  ; Drupal
;  (add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\)$" . drupal-mode))
;  (add-to-list 'auto-mode-alist '("/drupal.*\\.\\(php\\|inc\\)$" . drupal-mode))
;  (add-to-list 'auto-mode-alist '("\\.info" . conf-windows-mode))
;)
; 
;(setup-php-drupal)
