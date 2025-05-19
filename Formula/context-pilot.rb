class ContextPilot < Formula
  desc "Get Context at your code cursor!"
  homepage "https://github.com/krshrimali/context-pilot-rs"
  url "https://github.com/krshrimali/context-pilot-rs/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "6c349e2ef1fb7a140e5b4120cc0c841717efb23375da7cb77d6c4336f53fac46"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/contextpilot", "--help"
  end
end
