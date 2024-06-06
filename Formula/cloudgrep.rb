class Cloudgrep < Formula
  desc "cloudgrep is grep for cloud storage"
  homepage "https://github.com/cado-security/cloudgrep"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/cado-security/cloudgrep/releases/download/v105/dist-osx.zip"    
    sha256 "8eb02f2e7f48c2a77b254047fec00f869b0e315f2d08f47ebc13af18a357141c"

    def install
      bin.install "cloudgrep"
    end
  end

  on_linux do
    url "https://github.com/cado-security/cloudgrep/releases/download/v105/dist-linux.zip"
    sha256 "d4a4957de689c78af14d6bc25240156ecee0bfd153aee4616d82f139ac7d33e8"

    def install
      bin.install "cloudgrep"
    end
  end
end
