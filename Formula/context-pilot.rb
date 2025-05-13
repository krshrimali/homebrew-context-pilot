class ContextPilot < Formula
  desc "Get Context at your code cursor!"
  homepage "https://github.com/krshrimali/context-pilot-rs"
  url "https://github.com/krshrimali/context-pilot-rs/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "a726f415bb1db55c389996c338fb6d232186484ac44750d4a6abc29584243c65"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/contextpilot", "--help"
  end
end
