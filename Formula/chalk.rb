class Chalk < Formula
  desc "Observability tool that provides full lifecycle visibility into your development process"
  homepage "https://crashoverride.com"
  version "0.4.3"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.crashoverride.run/chalk/chalk-#{version}-darwin-arm64"
      sha256 "11e2b87f51ff84ac131c9316670445eb4eb2f24b80382e8a82602905fe992030"

      def install
        bin.install "chalk-#{version}-darwin-arm64" => "chalk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.crashoverride.run/chalk/chalk-#{version}-linux-arm64"
      sha256 "caff4e443f082c305d92c43984714c6dd1c6a7d42f63e4b1eeffd43e0480358c"

      def install
        bin.install "chalk-#{version}-linux-arm64" => "chalk"
      end
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://dl.crashoverride.run/chalk/chalk-#{version}-linux-x86_64"
      sha256 "a533a2ece32ecb25e5cb63b05ac180d8e8f9366dc54997f7475caa35729e742b"

      def install
        bin.install "chalk-#{version}-linux-x86_64" => "chalk"
      end
    end
  end
end
