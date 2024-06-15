class Cloudgrep < Formula
  desc "Grep for cloud storage"
  homepage "https://github.com/cado-security/cloudgrep"
  version "1.0.5"
  license "Apache-2.0"

  version_no_dots = version.to_s.tr(".", "")

  on_macos do
    url "https://github.com/cado-security/cloudgrep/releases/download/v#{version_no_dots}/dist-osx.zip"
    sha256 "8eb02f2e7f48c2a77b254047fec00f869b0e315f2d08f47ebc13af18a357141c"
  end

  on_linux do
    url "https://github.com/cado-security/cloudgrep/releases/download/v#{version_no_dots}/dist-linux.zip"
    sha256 "d4a4957de689c78af14d6bc25240156ecee0bfd153aee4616d82f139ac7d33e8"
  end

  def install
    bin.install "cloudgrep"
  end
end
