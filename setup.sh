ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
# ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

RUBYMINE_VERSION="RubyMine-221.4501.155"

mkdir -p /home/spin/.cache/JetBrains/RemoteDev/dist
curl -L https://download.jetbrains.com/ruby/$RUBYMINE_VERSION.tar.gz --output /tmp/rubymine.tar.gz
tar -zxf /tmp/rubymine.tar.gz -C /home/spin/.cache/JetBrains/RemoteDev/dist
touch /home/spin/.cache/JetBrains/RemoteDev/dist/$RUBYMINE_VERSION/.expandSucceeded
