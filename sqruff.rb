# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.7.6"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.6/sqruff-darwin-aarch64.tar.gz"
    sha256 "687473a00aeb6af120589d3fc82bb277571ec94977ca876aee34d9beb56fdd41"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.6/sqruff-darwin-x86_64.tar.gz"
    sha256 "0abc598e24b7ffc4724410321ab779292402121813b3ed3c9f075435c07b410d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.6/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "fc4577a486b4433e8cc976a8c064674eaf36b08ddc7227aa6598dc870af955ba"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
