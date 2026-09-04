class Iobend < Formula
  desc "Developer environment manager for diagnostics, setup, and DevOps automation"
  homepage "https://github.com/Iobend/iobend"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.6.1/IOBend-v2.6.1-macos-arm64.tar.gz"
      sha256 "69ca574658644a19729b65466e7c86a75301d92ad99d2c2b9d76b7fd722f7b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v2.6.1/IOBend-v2.6.1-linux-x64.tar.gz"
      sha256 "6b9d7fd0305a526f3031b3f55644835c67b98066eb75c471fc345ebf73e10465"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end
