sudo apt update ; sudo apt install -y gnome-keyring seahorse libsecret-1-0 dbus-x11 ; mkdir -p ~/.local/share/keyrings ; echo -e "[keyring]\ndisplay-name=login\nctime=0\nmtime=0\nlock-on-idle=false\nlock-after=false" > ~/.local/share/keyrings/login.keyring ; echo "login" > ~/.local/share/keyrings/default ; killall gnome-keyring-daemon 2>/dev/null ; export $(dbus-launch --sh-syntax) ; eval $(gnome-keyring-daemon --start --components=secrets)
mkdir -p ~/.local/share/keyrings ; echo -e "[keyring]\ndisplay-name=login\nctime=0\nmtime=0\nlock-on-idle=false\nlock-after=false" > ~/.local/share/keyrings/login.keyring ; echo "login" > ~/.local/share/keyrings/default ; killall gnome-keyring-daemon 2>/dev/null ; killall github-desktop 2>/dev/null ; eval $(dbus-launch --sh-syntax) ; eval $(gnome-keyring-daemon --start --components=secrets)
sudo apt update && sudo apt install -y gnome-keyring seahorse libsecret-1-0 dbus-x11 && \
mkdir -p ~/.local/share/keyrings && \
cat <<EOF > ~/.local/share/keyrings/login.keyring
[keyring]
display-name=login
ctime=0
mtime=0
lock-on-idle=false
lock-after=false
EOF
echo "login" > ~/.local/share/keyrings/default && \
killall gnome-keyring-daemon 2>/dev/null; \
export $(dbus-launch --sh-syntax) && \
eval $(gnome-keyring-daemon --start --components=secrets)
