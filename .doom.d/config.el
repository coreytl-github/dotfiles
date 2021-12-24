;; Coreys doom emacs configuration

;; Load the oceanic next theme.
(load-theme 'doom-oceanic-next t)

;; Enables relative numbers
(setq display-line-numbers 'relative)

;; Enables the MELPA repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Uses discord rich presence
(require 'elcord)
(elcord-mode)

;; Install org-bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(eval-region)

;; Font sizes in org mode
(custom-set-faces
  '(org-level-1 ((t (:inherit outline-1 :height 1.4))))
  '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
  '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
  '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
  '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
)

;; Enables emojis
(use-package emojify
  :hook (after-init . global-emojify-mode))

;; Change font to fira code
(setq doom-font (font-spec :family "Fira Code" :size 20))
