;;; line number
(global-display-line-numbers-mode)
(set-face-attribute 'line-number-current-line nil
                    :foreground "yellow")

;;; space
(setq-default tab-width 4
              indent-tabs-mode nil)

;;; paren
(electric-pair-mode)
(show-paren-mode)
(setq show-paren-delay 0)
(set-face-attribute 'show-paren-match nil
                    :background "bright black"
                    :underline 'unspecified)

;;; backup files
(setq make-backup-files nil)

