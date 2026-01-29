class Autogit < Formula
  desc "Blazing fast terminal-ui for git with AI superpowers"
  homepage "https://github.com/autogit-ai/autogit"
  version "1.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://assets.autogit.ai/releases/v1.2.3/autogit-v1.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "fc0c83ea1baea6c5042076ed94a2e990ef4fb1f80790c9bb4855e53f771c0a4f"
    end
  end

  def install
    bin.install "autogit"
  end

  test do
    system "#{bin}/autogit", "--version"
  end
end
