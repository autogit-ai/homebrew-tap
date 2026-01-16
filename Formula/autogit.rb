class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.6/autogit-v1.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "cd9691a89cf406b887b34af05c29c13dd39a474a872a854cbfecbfe0a954ea4f"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
