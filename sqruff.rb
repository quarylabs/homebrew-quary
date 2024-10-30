# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.20.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "bf64326a34fd18088c32f5b34ada5b5c53065c2fdcaae85ea6e0f491fde34147"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "91dbd38c854b21324b3f0d9d63b2cbeb9fcc25f918f3d117883777189666d52b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "eca6ef09bd13ae5ebf8f66434eafb84f74d41aa773bf5cda402c306bad843921"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
