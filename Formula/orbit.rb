class Orbit < Formula
  desc "Developer cockpit for your terminal: system health, git, Docker-aware ports and processes in one TUI"
  homepage "https://github.com/kotades/orbit"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kotades/orbit/releases/download/v0.1.0/orbit_darwin_arm64.tar.gz"
      sha256 "f9b609894349900ac39b399126f115551ed3527b728d2907dfcb5bf3f2c824e7"
    else
      url "https://github.com/kotades/orbit/releases/download/v0.1.0/orbit_darwin_amd64.tar.gz"
      sha256 "3bcbdac999d6ea1c19ed922e8e47f79b2179e1e463bc488dfa5ecb9e3f324a8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kotades/orbit/releases/download/v0.1.0/orbit_linux_arm64.tar.gz"
      sha256 "1eb23bfaca23b6d3f469c80aaedf8be59ebc6b2a2c6ce13d31f90533cd559571"
    else
      url "https://github.com/kotades/orbit/releases/download/v0.1.0/orbit_linux_amd64.tar.gz"
      sha256 "e8eda1596e42d5c12ff82b7dfe945fb79815552fdb5965ab894932a3992d0d53"
    end
  end

  def install
    bin.install "orbit"
  end

  test do
    assert_predicate bin/"orbit", :exist?
  end
end
