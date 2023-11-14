class Cloudgrep < Formula
  desc "cloudgrep is grep for cloud storage"
  homepage "https://github.com/cado-security/cloudgrep"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/cado-security/cloudgrep/releases/download/v103/dist-osx.zip"    
    sha256 "572288ff4c5a694463a18e58c4982c7b279305c3a475bba3f57be6d3b27efbcb"

    def install
      bin.install "cloudgrep"
    end
  end

  on_linux do
    url "https://github.com/cado-security/cloudgrep/releases/download/v103/dist-linux.zip"
    sha256 "1f12426205ed9c15453f0bf408ab00abde7a117f58d46c03de412c097c0c1ff7"

    def install
      bin.install "cloudgrep"
    end
  end
end
