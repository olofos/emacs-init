(load "~/Documents/emacs-paper/emacs-paper.el")

(set-variable 'ep-main-bib-file "~/Documents/Notes/References/refs.bib")
(set-variable 'ep-pdf-dir "~/Dropbox/Artiklar/")
(set-variable 'ep-pdf-file "~/Dropbox/Artiklar/papers.xml")
(set-variable 'ep-spires-url "http://www.slac.stanford.edu/spires/find/hep/www?rawcmd=")

(set-variable 'ep-fix-title-regexps
              '(("^{\\(.*\\)}$" . "\\1")   ; Remove start and end brace

                ("AdS(5) *[x\\*] *S(5)" . "{$\\\\AdS_5 \\\\times \\\\Sphere^5$}")
                ("AdS(5) *[x\\*] *S\\*\\*5" . "{$\\\\AdS_5 \\\\times \\\\Sphere^5$}")

                ("AdS_?5 *[x\\*] *S^?5" . "{$\\\\AdS_5 \\\\times \\\\Sphere^5$}")
                ("AdS_?4 *[x\\*] *CP[_^]?3" . "{$\\\\AdS_4 \\\\times \\\\CP^3$}")

                ("AdS_?\\([0-9]\\) */ *CFT_?\\([0-9]\\)" . "{$\\\\AdS_\\1/\\\\CFT_\\2$}")
                ("AdS(\\([0-9]\\)) */ *CFT(\\([0-9]\\))" . "{$\\\\AdS_\\1/\\\\CFT_\\2$}")

                (" +N *= *\\([0-9]\\)" . " {$\\\\superN = \\1$}")
                ("^N *= *\\([0-9]\\)" . "{$\\\\superN = \\1$}")

                ("Yang" . "{Y}ang")
                ("Bethe" . "{B}ethe")
                ("Mill" . "{M}ill")
                ("Chern" . "{C}hern")
                ("Simons" . "{S}imons")
                ("Hirota" . "{H}irota")
                ("Baxter" . "{B}axter")
                ("Sitter" . "{S}itter")
                ("Wilson" . "{W}ilson")

                ("AdS */ *CFT" . "{$\\\\AdS/\\\\CFT$}")
                ("SU(2) *x *SU(2)" . "{$\\\\grSU(2) \\\\times \\\\grSU(2)$}")
                ("CP^3\\([^$]\\)" . "{$\\\\CP^3$}\\1")

                ("\\([^\\]\\)AdS" . "\\1{$\\\\AdS$}")

                ("^\\([A-Z0-9]+\\)-" . "{\\1}-")
                (" \\([A-Z0-9]+\\)-" . " {\\1}-")

                ("^\\([A-Z0-9]+\\) " . "{\\1} ")
                (" \\([A-Z0-9]+\\) " . " {\\1} ")
                (" \\([A-Z0-9]+\\)$" . " {\\1}")

                ("{\\([A-Z]\\)} " . "\\1 ")))


(provide 'setup-ep)
