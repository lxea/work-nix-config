[ -n "$EAT_SHELL_INTEGRATION_DIR" ] && \
  source "$EAT_SHELL_INTEGRATION_DIR/zsh"

PATH="$PATH:/Users/alex/go/bin"

if [ -n "${DEVBOX_PACKAGES_DIR+1}" ]; then
	export PKG_CONFIG_PATH="$DEVBOX_PACKAGES_DIR/lib/pkgconfig"
	export FIDO2=dynamic
fi
