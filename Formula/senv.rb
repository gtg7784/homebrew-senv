class Senv < Formula
  desc "Encrypted .env replacement with first-class TUI"
  homepage "https://github.com/gtg7784/senv"
  url "https://github.com/gtg7784/senv/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "13e4abfe66265ce0b32ce75fdc0af18aa7f7f9b90adcb8f5f8f8b6ae1960a398"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/gtg7784/senv.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "senv #{version}", shell_output("#{bin}/senv --version")
  end
end
