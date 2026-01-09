class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.0.49"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.0.49/autogit-v1.0.49-aarch64-apple-darwin.tar.gz"
      sha256 "a42c97f7d48ebcc36ad80362fec8cf22948ed171a2dbc7682fa7c1b93ecb7b97"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
