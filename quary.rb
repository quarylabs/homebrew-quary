class Quary < Formula
  desc "Collaborative Business Intelligence, your team's browser-based data workbench"
  homepage "https://www.quary.dev"

  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.67/quary-0.0.67-quary-macos-x86_64-gnu.zip"
    sha256 "8a039a44d6e276567f0c1c19341e5a52f4147b83c45861d5ea10c429b0d66658"
    
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/quary-cli/releases/download/0.0.67/quary-0.0.67-quary-macos-aarch64-gnu.zip"
    sha256 "c7be8ef7912bfbef0fa745f1e3b95831f04df2aee563a3a1dea69b8fed566ea0"
  end

  def install
    bin.install "quary-0.0.67" => "quary"
  end
end
