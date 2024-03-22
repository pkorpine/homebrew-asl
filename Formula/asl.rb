class Asl < Formula
  desc "Macroassembler AS"
  homepage "http://john.ccac.rwth-aachen.de:8000/as/"
  url "http://john.ccac.rwth-aachen.de:8000/ftp/as/source/c_version/asl-current-142-bld265.tar.gz"
  version "1.42-b265"
  sha256 "c86137e998ee580c5f9a289423bd55f47f3742573319810961ea73571d8ad8e7"
  license "GPL-1.0-or-later"

  def install
    mv "Makefile.def.tmpl", "Makefile.def"
    system "make", "-j"
    bin.install "p2bin", "p2hex", "pbind", "plist", "alink", "asl", "mkdepend", "rescomp"
    man1.install Dir["man/*"]
  end

  test do
    system "false"
  end
end
