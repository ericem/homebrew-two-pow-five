class Certdump < Formula
  desc "Certificate Dumper"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certdump"
  url "https://github.com/ericem/two-pow-five/raw/master/certdump/release/certdump-0.1.0.tar.gz"
  sha256 "d4a098b1d4594bdd9c139bce63acc5a244de78f4b530ba86421fbe5f26043b3c "

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certdump/release"
    cellar :any
    sha256 "5962f7adde4c6e465236f1cddeeabffffafef2052c8c75ef01932b1b6414c455" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
