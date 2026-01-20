class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.36/autogit-v1.1.36-aarch64-apple-darwin.tar.gz"
      sha256 "f5ae04f50c8139df7818e55e0809ae4e8c690ecd765bbf4e412a6403a5f3cb0f"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
