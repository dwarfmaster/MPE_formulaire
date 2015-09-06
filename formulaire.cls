\ProvidesClass{formulaire}
\NeedsTeXFormat{LaTeX2e}[1994/06/01]

% Classe globale
\LoadClass[12pt,
           a4paper,
          ] {article}

% Gestion des caractères
\RequirePackage[utf8]                               {inputenc}
\RequirePackage[T1]                                 {fontenc}
\renewcommand{\sfdefault}{phv}
\RequirePackage[francais]                           {babel}
\RequirePackage[a4paper, includefoot, margin=1.5cm] {geometry}
\RequirePackage                                     {titlesec}

% Mode mathématique
\RequirePackage           {amsmath}
\RequirePackage           {amsfonts}
\RequirePackage           {amssymb}
\RequirePackage[european] {circuitikz}
\RequirePackage           {fancybox}
\RequirePackage           {graphicx}
\RequirePackage           {float}
\RequirePackage           {pgf, tikz}

% Fonctionnalités additionnelles
\RequirePackage{tabularx}
\RequirePackage{hyperref} % Formatage du pdf
\hypersetup{
    colorlinks    = false,
    breaklinks    = true,
    urlcolor      = blue,
    linkcolor     = red,
    bookmarksopen = true
}

% Crée un environnement circuitikz, corrigeant un bug de circuitikz avec babel en français
\newenvironment{circuit}{ \shorthandoff{:!}
                          \begin{circuitikz}
                        }{\end{circuitikz}
                          \shorthandon{:!}
                        }

