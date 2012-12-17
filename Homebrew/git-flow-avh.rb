require 'formula'

class GitFlowCompletionAvh < Formula
  homepage 'https://github.com/petervanderdoes/git-flow-completion'
  url 'https://github.com/petervanderdoes/git-flow-completion.git', :tag => '1.3.1'
  version '1.3.1'

  head 'https://github.com/petervanderdoes/git-flow-completion.git', :branch => 'develop'
end

class GitFlowAvh < Formula
  homepage 'https://github.com/petervanderdoes/gitflow'

  url 'https://github.com/petervanderdoes/gitflow.git', :tag => '1.3.1'
  version '1.3.1'

  head 'https://github.com/petervanderdoes/gitflow.git', :branch => 'develop'

  def install
    system "make", "prefix=#{prefix}", "install"

    GitFlowCompletionAvh.new('git-flow-completion-avh').brew do
      (prefix+'etc/bash_completion.d').install "git-flow-completion.bash"
      (share+'zsh/site-functions').install "git-flow-completion.zsh"
    end
  end
end
