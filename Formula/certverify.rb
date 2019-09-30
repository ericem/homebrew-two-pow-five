class Certverify < Formula
  desc "Certificate Verifier"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certverify"
  url "https://github.com/ericem/two-pow-five/raw/master/certverify/release/certverify-0.1.0.tar.gz"
  sha256 "45ffe5cb79f74f6c0adfafea067c369cc27648420a6a745fc396b0b9e5e4891c"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certverify/release"
    cellar :any
    sha256 "1e304438c0ed6b620d592d89e9dbaf746bfd6a4907bc5088ada348f062a81bab" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
