
;; GNU EMACS ALBLABLA'S
;; Author: Antonio Barreiros
;; Description: This is my personal emacs config file, keep in mind I am a total noob in emacs/elisp

; sets directory close to init.el
(cd (getenv "HOME"))


; these noises are ridiculous
(setq visible-bell t)
(setq ring-bell-function 'ignore)

; increases undo buffer to a lot.
(setq undo-limit 20000000)
(setq undo-strong-limit 40000000)

; dracula
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

; sets CUA cuz im a windows user :X
(cua-mode t)
(transient-mark-mode 1)
(add-to-list 'default-frame-alist '(font . "Liberation Mono-12.0") '(height . 160))

; disable menu, tool and scroll bar
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

; startup configuration
(setq truncate-partial-width-windows nil)
(setq next-line-add-newlines nil)
(split-window-horizontally)
(global-set-key "\C-x\ w" 'toggle-truncate-lines)

; code from Casey Muratori, highlights TODO and NOTE
(setq fixme-modes '(c++-mode c-mode emacs-lisp-mode))
(make-face 'font-lock-fixme-face)
(make-face 'font-lock-note-face)
(mapc (lambda(mode)
	(font-lock-add-keywords
	 mode
	 '(("\\<\\(TODO\\)" 1 'font-lock-fixme-face t)
	   ("\\<\\(NOTE\\)" 1 'font-lock-note-face t))))
      fixme-modes)
(modify-face 'font-lock-fixme-face "Red" nil nil t nil t nil nil)
(modify-face 'font-lock-note-face "orange red" nil nil t nil t nil nil)

; increases tab width
(setq tab-width 4
      indent-tabs-mode nil)
