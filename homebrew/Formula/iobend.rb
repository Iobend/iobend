class Iobend < Formula
  desc "Command-line interface for the IOBend Unified Developer Experience Platform"
  homepage "https://github.com/Iobend/iobend"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Iobend/iobend/releases/download/v2.6.3/IOBend-v2.6.3-macos-arm64.tar.gz"
      sha256 "f232300b1e6a78c338e2c863254b9e5653781dcfd5821d6befd6a3360574593c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Iobend/iobend/releases/download/v2.6.3/IOBend-v2.6.3-linux-x64.tar.gz"
      sha256 "dbf89f56652148c3a1ee48c358ab53a389e5fa339dd0be757fe39ef789561a9d"
    end
  end

  def install
    bin.install "iobend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iobend --version")
  end
end
