class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.1.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.1.37/autogit-v1.1.37-aarch64-apple-darwin.tar.gz"
      sha256 "4833050731f2576f48844fcce3d2da88a5775874da03d0abe87c49c79edaf6a5"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
