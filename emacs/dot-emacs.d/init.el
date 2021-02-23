;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(package-selected-packages
   (quote
    (smartparens evil-magit flx-ido yard-mode yaml-mode which-key wgrep web-mode use-package undo-tree tuareg smex slim-mode scss-mode scala-mode sbt-mode rust-mode ruby-end rspec-mode rainbow-mode rainbow-delimiters racket-mode python-mode py-autopep8 projectile-rails powerthesaurus pinboard paredit orgalist org-plus-contrib org-msg org-bullets multi-term mu4e-alert modus-operandi-theme minions merlin ivy-xref instapaper helpful haskell-mode haml-mode graphviz-dot-mode go-errcheck gnuplot git-timemachine geiser forge flycheck-package evil-surround evil-org evil-collection engine-mode elpy elpher elfeed-org eglot dumb-jump dired-open dired-hide-dotfiles diff-hl deft counsel company-terraform company-restclient company-jedi company-go company-coq coffee-mode chruby avy auto-compile async ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-pre-face ((t nil))))
