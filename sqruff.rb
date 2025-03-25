# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.18"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.18/sqruff-darwin-aarch64.tar.gz"
    sha256 "10e4288af138e0a468621f8d441796951b64c57f563300abf43ed938771e6649"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.18/sqruff-darwin-x86_64.tar.gz"
    sha256 "abb53924fa62691c337d43b9322f56af33e818699085cc6d2a3043098a903ece"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.18/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "f524c8e0c9cf936f2639a211391f81f52e9469d3550434ae2e60c3fa729630ac"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
