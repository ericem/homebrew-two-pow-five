class Speedtest < Formula
  desc "Certificate Dumper"
  homepage "https://github.com/ericem/two-pow-five/tree/master/speedtest"
  url "https://github.com/ericem/two-pow-five/raw/master/speedtest/release/speedtest-0.1.0.tar.gz"
  sha256 "9bf11868881788666f1d11776d5624a9453f15403c65a29cadcb57a5fb633b9a"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/speedtest/release"
    cellar :any
    sha256 "552cbe3de3841a39fa0d10124497c17c309d663a20276982f3174d2cbde7bdf4" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
