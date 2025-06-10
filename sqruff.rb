# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.26.5"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.5/sqruff-darwin-aarch64.tar.gz"
    sha256 "a56475afce5d5501b374fd59a30b2bbb1fd326bd47eec7cf5bbec931be53bca2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.5/sqruff-darwin-x86_64.tar.gz"
    sha256 "826f28d0d95e99fe42ff5eda2ceeab7382e94e483dc8f91cf553c32f0ae20fb0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.5/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "1a9260363806c844d93be43b5a8cda9f3df1f75e6a79fc278eec22a5a19f28dd"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
