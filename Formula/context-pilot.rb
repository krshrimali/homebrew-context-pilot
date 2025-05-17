class ContextPilot < Formula
  desc "Get Context at your code cursor!"
  homepage "https://github.com/krshrimali/context-pilot-rs"
  url "https://github.com/krshrimali/context-pilot-rs/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "880f797adeb31848f0acd405f8f35eb7313beda4e8dfc95ee88e90a8d44cd4ef"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/contextpilot", "--help"
  end
end
