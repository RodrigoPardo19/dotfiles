;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;

;; Windows size on start
(setq initial-frame-alist '((top . 40) (left . 110) (width . 190) (height . 47)))

;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
 (setq doom-font (font-spec :family "JetBrains Mono" :size 15 :weight 'medium)
       doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; This change the background color for darker doom one
;; An alternative darker color "#1e2227"
(custom-set-faces
  '(default ((t (:background "#23262d"))))
  '(solaire-default-face ((t (:background "#1d2026"))))
;  '(solaire-mode-line-active-face ((t (:background "#ffffff"))))
;  '(hl-line ((t (:background "#23262d"))))
 )

;; Set windows borders
(custom-set-faces! '(window-divider :foreground "#30363d"))

;; Set modeline borders
(custom-set-faces! '(solaire-mode-line-face :box "#30363d"))
(custom-set-faces! '(solaire-mode-line-active-face :box "#30363d"))
(custom-set-faces! '(solaire-mode-line-inactive-face :box "#30363d"))
(custom-set-faces! '(mode-line-faces :box "#30363d"))
(custom-set-faces! '(mode-line :box "#30363d"))
(custom-set-faces! '(mode-line-active :box "#30363d"))
(custom-set-faces! '(mode-line-inactive :box "#30363d"))

;; This change jsx colors to a violet scheme
(custom-set-faces! '(rjsx-tag :foreground "violet"))
(custom-set-faces! '(rjsx-attr :foreground "#dcaeea"))

;; Treemacs conf
;; M-x all-the-icons-install-fonts are required
(setq doom-themes-treemacs-theme "doom-colors")
;; A more classic icon theme
;;(setq doom-themes-treemacs-theme "all-the-icons")

;; Set a colorful dired icons
(setq all-the-icons-dired-monochrome nil)

;; (setq-hook! 'rjsx-mode-hook +format-with 'prettier)

;; Disable lsp formatter for rjsx mode, this gets the prettier conf(.prettierrc) in root of project like default formatter
(setq-hook! 'rjsx-mode-hook +format-with-lsp nil)

;; Change the default linter for rjsx mode, by default is lsp and this change it to eslint
(setq-hook! 'rjsx-mode-hook flycheck-checker 'javascript-eslint)

;; Treemacs show just the current project
(setq treemacs-project-follow-cleanup t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
