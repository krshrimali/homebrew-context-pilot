class ContextPilot < Formula
  desc "Get Context at your code cursor!"
  homepage "https://github.com/krshrimali/context-pilot-rs"
  url "https://github.com/krshrimali/context-pilot-rs/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "de2a11f5d16a4820bd7b5810a39736c9d5d14352bf9f77bbf829f0e496eab228"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/contextpilot", "--help"
  end
end
