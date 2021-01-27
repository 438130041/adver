package com.lx.practice.util;

import java.awt.BasicStroke;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Shape;
import java.awt.geom.RoundRectangle2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.OutputStream;
import java.util.Hashtable;
import java.util.Random;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;




public class QrCodeUtil {
	    
	    //����
		private static final String CHARSET = "utf-8";
	    //ͼƬ��ʽ
		private static final String FORMAT = "JPG";
	    // ��ά��ߴ�
	    private static final int QRCODE_SIZE = 300;
	    // LOGO���
	    private static final int LOGO_WIDTH = 60;
	    // LOGO�߶�
	    private static final int LOGO_HEIGHT = 60;

	    private static BufferedImage createImage(String content, String logoPath, boolean needCompress) throws Exception {
	        Hashtable<EncodeHintType, Object> hints = new Hashtable<EncodeHintType, Object>();
	        hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);
	        hints.put(EncodeHintType.CHARACTER_SET, CHARSET);
	        hints.put(EncodeHintType.MARGIN, 1);
	        BitMatrix bitMatrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, QRCODE_SIZE, QRCODE_SIZE,
	                hints);
	        int width = bitMatrix.getWidth();
	        int height = bitMatrix.getHeight();
	        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
	        for (int x = 0; x < width; x++) {
	            for (int y = 0; y < height; y++) {
	                image.setRGB(x, y, bitMatrix.get(x, y) ? 0xFF000000 : 0xFFFFFFFF);
	            }
	        }
	        if (logoPath == null || "".equals(logoPath)) {
	            return image;
	        }
	        // ����ͼƬ
	        QrCodeUtil.insertImage(image, logoPath, needCompress);
	        return image;
	    }

	    /**
	     * ����LOGO
	     *
	     * @param source
	     *            ��ά��ͼƬ
	     * @param logoPath
	     *            LOGOͼƬ��ַ
	     * @param needCompress
	     *            �Ƿ�ѹ��
	     * @throws Exception
	     */
	    private static void insertImage(BufferedImage source, String logoPath, boolean needCompress) throws Exception {
	        File file = new File(logoPath);
	        if (!file.exists()) {
	            throw new Exception("logo file not found.");
	        }
	        Image src = ImageIO.read(new File(logoPath));
	        int width = src.getWidth(null);
	        int height = src.getHeight(null);
	        if (needCompress) { // ѹ��LOGO
	            if (width > LOGO_WIDTH) {
	                width = LOGO_WIDTH;
	            }
	            if (height > LOGO_HEIGHT) {
	                height = LOGO_HEIGHT;
	            }
	            Image image = src.getScaledInstance(width, height, Image.SCALE_SMOOTH);
	            BufferedImage tag = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
	            Graphics g = tag.getGraphics();
	            g.drawImage(image, 0, 0, null); // ������С���ͼ
	            g.dispose();
	            src = image;
	        }
	        // ����LOGO
	        Graphics2D graph = source.createGraphics();
	        int x = (QRCODE_SIZE - width) / 2;
	        int y = (QRCODE_SIZE - height) / 2;
	        graph.drawImage(src, x, y, width, height, null);
	        Shape shape = new RoundRectangle2D.Float(x, y, width, width, 6, 6);
	        graph.setStroke(new BasicStroke(3f));
	        graph.draw(shape);
	        graph.dispose();
	    }

	    /**
	     * ���ɶ�ά��(��ǶLOGO)
	     * ��ά���ļ���������ļ������ܻ����ظ�
	     *
	     * @param content
	     *            ����
	     * @param logoPath
	     *            LOGO��ַ
	     * @param destPath
	     *            ���Ŀ¼
	     * @param needCompress
	     *            �Ƿ�ѹ��LOGO
	     * @throws Exception
	     */
	    public static Object encode(String content, String logoPath, String destPath, boolean needCompress) throws Exception {
	        BufferedImage image = QrCodeUtil.createImage(content, logoPath, needCompress);
	        /*mkdirs(destPath);*///��������ļ���
	        String fileName = new Random().nextInt(99999999) + "." + FORMAT.toLowerCase();//��ά��ͼƬ
	        
			/* String  login = "";*/
	        File file = new File(destPath + fileName);
	        /*System.out.println("ͼƬ��"+file);*/
	        
	        /*ImageIO.write(image, FORMAT, new File(destPath + "/" + fileName));*/
	        System.out.println("image:"+image);
	        ImageIO.write(image,FORMAT,file);
	        file.createNewFile();
	        
	        return    fileName;
	    }

	    /**
	     * ���ɶ�ά��(��ǶLOGO)
	     * ������ָ����ά���ļ���
	     *
	     * @param content
	     *            ����
	     * @param logoPath
	     *            LOGO��ַ
	     * @param destPath
	     *            ���Ŀ¼
	     * @param fileName
	     *            ��ά���ļ���
	     * @param needCompress
	     *            �Ƿ�ѹ��LOGO
	     * @throws Exception
	     */
	    public static String encode(String content, String logoPath, String destPath, String fileName, boolean needCompress) throws Exception {
	        BufferedImage image = QrCodeUtil.createImage(content, logoPath, needCompress);
	        mkdirs(destPath);
	        fileName = fileName.substring(0, fileName.indexOf(".")>0?fileName.indexOf("."):fileName.length())
	                + "." + FORMAT.toLowerCase();
	        ImageIO.write(image, FORMAT, new File(destPath + "/" + fileName));
	        return fileName;
	    }

	    /**
	     * ���ļ��в�����ʱ��mkdirs���Զ��������Ŀ¼��������mkdir��
	     * (mkdir�����Ŀ¼����������׳��쳣)
	     * @param destPath
	     *            ���Ŀ¼
	     */
	    public static void mkdirs(String destPath) {
	        File file = new File(destPath);
	        if (!file.exists() && !file.isDirectory()) {
	            file.mkdirs();
	        }
	    }

	    /**
	     * ���ɶ�ά��(��ǶLOGO)
	     *
	     * @param content
	     *            ����
	     * @param logoPath
	     *            LOGO��ַ
	     * @param destPath
	     *            �洢��ַ
	     * @throws Exception
	     */
	    public static Object encode(String content, String logoPath, String destPath) throws Exception {
	        return QrCodeUtil.encode(content, logoPath, destPath, false);
	    }

	    /**
	     * ���ɶ�ά��
	     *
	     * @param content
	     *            ����
	     * @param destPath
	     *            �洢��ַ
	     * @param needCompress
	     *            �Ƿ�ѹ��LOGO
	     * @throws Exception
	     */
	    public static Object encode(String content, String destPath, boolean needCompress) throws Exception {
	        return QrCodeUtil.encode(content, null, destPath, needCompress);
	    }

	    /**
	     * ���ɶ�ά��
	     *
	     * @param content
	     *            ����
	     * @param destPath
	     *            �洢��ַ
	     * @throws Exception
	     */
	    public static Object encode(String content, String destPath) throws Exception {
	        return QrCodeUtil.encode(content, null, destPath, false);
	    }

	    /**
	     * ���ɶ�ά��(��ǶLOGO)
	     *
	     * @param content
	     *            ����
	     * @param logoPath
	     *            LOGO��ַ
	     * @param output
	     *            �����
	     * @param needCompress
	     *            �Ƿ�ѹ��LOGO
	     * @throws Exception
	     */
	    public static void encode(String content, String logoPath, OutputStream output, boolean needCompress)
	            throws Exception {
	        BufferedImage image = QrCodeUtil.createImage(content, logoPath, needCompress);
	        ImageIO.write(image, FORMAT, output);
	    }

	    /**
	     * ���ɶ�ά��
	     *
	     * @param content
	     *            ����
	     * @param output
	     *            �����
	     * @throws Exception
	     */
	    public static void encode(String content, OutputStream output) throws Exception {
	        QrCodeUtil.encode(content, null, output, false);
	    }

	    /**
	     * ������ά��
	     *
	     * @param file
	     *            ��ά��ͼƬ
	     * @return
	     * @throws Exception
	     */
	    public static String decode(File file) throws Exception {
	        BufferedImage image;
	        image = ImageIO.read(file);
	        if (image == null) {
	            return null;
	        }
	        BufferedImageLuminanceSource source = new BufferedImageLuminanceSource(image);
	        BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
	        Result result;
	        Hashtable<DecodeHintType, Object> hints = new Hashtable<DecodeHintType, Object>();
	        hints.put(DecodeHintType.CHARACTER_SET, CHARSET);
	        result = new MultiFormatReader().decode(bitmap, hints);
	        String resultStr = result.getText();
	        return resultStr;
	    }

	    /**
	     * ������ά��
	     *
	     * @param path
	     *            ��ά��ͼƬ��ַ
	     * @return
	     * @throws Exception
	     */
	    public static String decode(String path) throws Exception {
	        return QrCodeUtil.decode(new File(path));
	    }

	   /* public static void main(String[] args) throws Exception {
	        String text = "http://localhost:8083/communication/distribution?qrid=54999";
	        //����Logo
	        //QrCodeUtil.encode(text, null, "e:\\", true);
	        //��Logo����ָ����ά��ͼƬ��
	        //QrCodeUtil.encode(text, "e:\\csdn.jpg", "e:\\", true);
	        //��Logo��ָ����ά��ͼƬ��
	        QrCodeUtil.encode(text, "e:\\error.jpg", "e:\\", "qrcode", true);
	    }*/
	
	
	
	
	
	
	
	
	/* public static void main(String[] args) {
	        String url = "http://www.baidu.com";
	        String path = FileSystemView.getFileSystemView().getHomeDirectory() + File.separator + "testQrcode";
	        String fileName = "temp.jpg";
	        createQrCode(url, path, fileName);
	    }

	    public static void createQrCode(String url,String path,String fileName) {
	        try {
	            Map<EncodeHintType, String> hints = new HashMap<>();
	            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
	            BitMatrix bitMatrix = new MultiFormatWriter().encode(url, BarcodeFormat.QR_CODE, 400, 400, hints);
	            File file = new File(path, fileName);
	            if (file.exists() || ((file.getParentFile().exists() || file.getParentFile().mkdirs()) && file.createNewFile())) {
	                writeToFile(bitMatrix, "jpg", file);
	                System.out.println("��ά��ͼƬ��" + file);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    static void writeToFile(BitMatrix matrix, String format, File file) throws IOException {
	        BufferedImage image = toBufferedImage(matrix);
	        if (!ImageIO.write(image, format, file)) {
	            throw new IOException("Could not write an image of format " + format + " to " + file);
	        }
	    }

	    private static final int BLACK = 0xFF000000;
	    private static final int WHITE = 0xFFFFFFFF;

	    private static BufferedImage toBufferedImage(BitMatrix matrix) {
	        int width = matrix.getWidth();
	        int height = matrix.getHeight();
	        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
	        for (int x = 0; x < width; x++) {
	            for (int y = 0; y < height; y++) {
	                image.setRGB(x, y, matrix.get(x, y) ? BLACK : WHITE);
	            }
	        }
	        return image;
	    }*/
	
	
}
