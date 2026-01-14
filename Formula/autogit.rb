class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.68"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.68/autogit-v1.0.68-aarch64-apple-darwin.tar.gz"
      sha256 "d35e66625db3c947e652efee8641197b5921654680e048ff17de41c821fe968c"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
