export LS_COLORS="\
# Directories - bold primary color
di=38;2;{{ colors.primary.default.red }};{{ colors.primary.default.green }};{{ colors.primary.default.blue }};1:\
# Symbolic links - bold secondary color
ln=38;2;{{ colors.secondary.default.red }};{{ colors.secondary.default.green }};{{ colors.secondary.default.blue }};1:\
# Named pipes (FIFO) - error color normal
pi=38;2;{{ colors.error.default.red }};{{ colors.error.default.green }};{{ colors.error.default.blue }};0:\
# Sockets - tertiary color normal
so=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};0:\
# Block devices - primary container bold
bd=38;2;{{ colors.primary_container.default.red }};{{ colors.primary_container.default.green }};{{ colors.primary_container.default.blue }};1:\
# Character devices - secondary container bold
cd=38;2;{{ colors.secondary_container.default.red }};{{ colors.secondary_container.default.green }};{{ colors.secondary_container.default.blue }};1:\
# Executable files - error container bold
ex=38;2;{{ colors.error_container.default.red }};{{ colors.error_container.default.green }};{{ colors.error_container.default.blue }};1:\
# Regular files - on_surface color normal (ensures visibility)fi=38;2;{{ colors.on_surface.default.red }};{{ colors.on_surface.default.green }};{{ colors.on_surface.default.blue }};0:\
# Orphaned symbolic links and missing files - error color bold
or=38;2;{{ colors.error.default.red }};{{ colors.error.default.green }};{{ colors.error.default.blue }};1:\
mi=38;2;{{ colors.error.default.red }};{{ colors.error.default.green }};{{ colors.error.default.blue }};1:\
\
# Archives and compressed files - tertiary color bold
*.tar=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.tgz=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.zip=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.gz=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.bz2=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.7z=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
\
# Image files - primary color bold
*.jpg=38;2;{{ colors.primary.default.red }};{{ colors.primary.default.green }};{{ colors.primary.default.blue }};1:\
*.jpeg=38;2;{{ colors.primary.default.red }};{{ colors.primary.default.green }};{{ colors.primary.default.blue }};1:\
*.png=38;2;{{ colors.primary.default.red }};{{ colors.primary.default.green }};{{ colors.primary.default.blue }};1:\
*.gif=38;2;{{ colors.primary.default.red }};{{ colors.primary.default.green }};{{ colors.primary.default.blue }};1:\
\
# Video files - tertiary color bold
*.mp4=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.mkv=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
*.avi=38;2;{{ colors.tertiary.default.red }};{{ colors.tertiary.default.green }};{{ colors.tertiary.default.blue }};1:\
\
# Audio files - secondary color normal
*.mp3=38;2;{{ colors.secondary.default.red }};{{ colors.secondary.default.green }};{{ colors.secondary.default.blue }};0:\
*.wav=38;2;{{ colors.secondary.default.red }};{{ colors.secondary.default.green }};{{ colors.secondary.default.blue }};0:\
\
# Documents - primary container color normal
*.pdf=38;2;{{ colors.primary_container.default.red }};{{ colors.primary_container.default.green }};{{ colors.primary_container.default.blue }};0:\
*.doc=38;2;{{ colors.primary_container.default.red }};{{ colors.primary_container.default.green }};{{ colors.primary_container.default.blue }};0:\
*.txt=38;2;{{ colors.surface_variant.default.red }};{{ colors.surface_variant.default.green }};{{ colors.surface_variant.default.blue }};0:\
\
# Code files - secondary container color normal
*.c=38;2;{{ colors.secondary_container.default.red }};{{ colors.secondary_container.default.green }};{{ colors.secondary_container.default.blue }};0:\
*.py=38;2;{{ colors.secondary_container.default.red }};{{ colors.secondary_container.default.green }};{{ colors.secondary_container.default.blue }};0:\
*.js=38;2;{{ colors.secondary_container.default.red }};{{ colors.secondary_container.default.green }};{{ colors.secondary_container.default.blue }};0:\
*.html=38;2;{{ colors.secondary_container.default.red }};{{ colors.secondary_container.default.green }};{{ colors.secondary_container.default.blue }};0:\
"
