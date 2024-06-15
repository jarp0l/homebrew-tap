class Chalk < Formula
  desc "Observability tool that provides full lifecycle visibility into your development process"
  homepage "https://crashoverride.com"
  version "0.4.5"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.crashoverride.run/chalk/chalk-#{version}-darwin-arm64"
      sha256 "2ada0ca9041d6da6d54d04caf170b2d399f0b8d265746ab9acf82062eab9af8f"

      def install
        bin.install "chalk-#{version}-darwin-arm64" => "chalk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.crashoverride.run/chalk/chalk-#{version}-linux-arm64"
      sha256 "33fee16ac583cb78b923a56e9c46d4e7242c310369c93f99e576955a41176067"

      def install
        bin.install "chalk-#{version}-linux-arm64" => "chalk"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.crashoverride.run/chalk/chalk-#{version}-linux-x86_64"
      sha256 "65ce259dc381d3b22d258181d0febacdab76b7778da7b0564ef52e0257182e24"

      def install
        bin.install "chalk-#{version}-linux-x86_64" => "chalk"
      end
    end
  end
end
