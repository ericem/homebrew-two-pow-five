class Certinfo < Formula
  desc "Certificate Information Viewer"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certinfo"
  url "https://github.com/ericem/two-pow-five/raw/master/certinfo/release/certinfo-0.1.1.tar.gz"
  sha256 "5803c970bd0c2da5995fdbf0dd01ca4b36eacbb8fd14d1f10a75f4ff2747f63a"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certinfo/release"
    cellar :any
    sha256 "71b6f1eade6f2b5c5e21814333e8ac61564e4a1903847089bdc45f05bbbc5c00" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
