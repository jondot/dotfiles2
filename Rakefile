require 'fileutils'
include FileUtils


def on_linux?
  RUBY_PLATFORM =~ /linux/
end

def sym(pointers)
  pointers.each do |link, source|
    if !File.exist?(File.expand_path(link))
      symlink File.expand_path(source), File.expand_path(link)
    end
  end
end


desc "Bootstrap a fresh account"
task :bootstrap do
  sym '~/.zshrc' => '~/dotfiles/.zshrc',
      '~/.fonts' => '~/dotfiles/.fonts',
      '~/.janus' => '~/dotfiles/janus/plugins',
      '~/.vimrc.after' => '~/dotfiles/janus/.vimrc.after',
      '~/.vimrc.before' => '~/dotfiles/janus/.vimrc.before',
      '~/.tmux.conf'   => '~/dotfiles/.tmux.conf'


  `sudo fc-cache -f -v` if on_linux?


  # custom modules.
  sh 'git clone git@github.com:bling/vim-airline.git ~/dotfiles/janus/plugins/vim-airline'
  sh 'git clone git@github.com:mtscout6/vim-cjsx.git ~/dotfiles/janus/plugins/vim-cjsx'

  puts "done."
  puts 'Set Terminal font to Monaco, 11pt' if on_linux?
end







