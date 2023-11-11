class Cloudgrep < Formula
  desc "cloudgrep is grep for cloud storage"
  homepage "https://github.com/cado-security/cloudgrep"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/cado-security/cloudgrep/releases/download/v102/dist-osx.zip"    
    sha256 "026405fca77af4aa38d3a17f5938046b0ee440863e297d6c70b6b5e55835f8a9"

    def install
      bin.install "cloudgrep"
    end
  end

  on_linux do
    url "https://github.com/cado-security/cloudgrep/releases/download/v102/dist-linux.zip"
    sha256 "85fbd19fa81c5abe3da96e6bbc3b7d4aecb061aa48f5a8958002b1680a949683"

    def install
      bin.install "cloudgrep"
    end
  end
end
