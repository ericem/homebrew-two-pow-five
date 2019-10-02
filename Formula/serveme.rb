class Serveme < Formula
  desc "Super Simple Static File Server"
  homepage "https://github.com/ericem/two-pow-five/tree/master/serveme"
  url "https://github.com/ericem/two-pow-five/raw/master/serveme/release/serveme-0.1.0.tar.gz"
  sha256 "1402091e632b10a6f0d63697126d1941bf55e2dd36a8664f8e7051b5e1a0af6f"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/serveme/release"
    cellar :any
    sha256 "2d117de14cab43d76290b66d3648f0f6f81fff47fa3325dc79a688c9fb8538c6" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
