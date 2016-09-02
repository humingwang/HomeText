<%@ page contentType="image/jpeg"
	import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*"%>
<%!Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}%>
<%
	out.clear();
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);

	int width = 110;
	int height = 30;
	BufferedImage buffImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
	Graphics2D g = buffImg.createGraphics();

	Random random = new Random();

	g.setColor(getRandColor(240, 250));
	g.fillRect(0, 0, width, height);
	Font font = new Font("Times New Roman", Font.HANGING_BASELINE, 28);
	g.setFont(font);
	g.setColor(Color.BLACK);
	g.drawRect(0, 0, width - 1, height - 1);
	g.setColor(getRandColor(160, 200));
	for (int i = 0; i <100; i++) {
		int x = random.nextInt(width);
		int y = random.nextInt(height);
		int xl = random.nextInt(12);
		int yl = random.nextInt(12);
		g.drawLine(x, y, x + xl, y + yl);
	}

	StringBuffer randomCode = new StringBuffer();
	int length = 4;
	String base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	int size = base.length();
	for (int i = 0; i < length; i++) {
		int start = random.nextInt(size);
		String strRand = base.substring(start, start + 1);

		g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));

		g.drawString(strRand, 15 * i + 6, 24);

		randomCode.append(strRand);
	}
	String yzm=randomCode.toString();
	session.removeAttribute("rand");
	session.setAttribute("rand", yzm);

	g.dispose();
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
	response.setContentType("image/jpeg");
	ServletOutputStream sos = response.getOutputStream();
	ImageIO.write(buffImg, "jpeg", sos);
	sos.flush();
	sos.close();
%>

