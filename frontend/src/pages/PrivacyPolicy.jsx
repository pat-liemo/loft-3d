import React, { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './PrivacyPolicy.css';

function PrivacyPolicy() {
  const navigate = useNavigate();

  // Scroll to top on page load
  useEffect(() => {
    window.scrollTo(0, 0);
  }, []);

  return (
    <div className="privacy-page">
      <div className="privacy-hero">
        <button 
          className="back-btn"
          onClick={() => navigate(-1)}
          style={{
            position: 'absolute',
            top: 'calc(1.25rem + env(safe-area-inset-top, 0px))',
            left: '1.25rem',
            background: 'rgba(255, 255, 255, 0.2)',
            border: 'none',
            width: '2.4rem',
            height: '2.4rem',
            borderRadius: '50%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            cursor: 'pointer',
            backdropFilter: 'blur(10px)',
            zIndex: 2
          }}
        >
          <i className="fas fa-arrow-left" style={{color: 'white', fontSize: '0.9rem'}}></i>
        </button>
        
        <div className="hero-content">
          <h1>Privacy Policy</h1>
          <p><strong>Last Updated:</strong> December 28, 2024</p>
        </div>
      </div>

      <div className="privacy-container">
        <div className="privacy-intro">
          <p>At <strong>LOFT STUDIO</strong>, we respect your privacy and are committed to protecting the personal information you share with us. This Privacy Policy explains how we collect, use, store, and safeguard your information when you use our real estate platform.</p>
        </div>

        <section className="privacy-section">
          <h2>1. Information We Collect</h2>
          
          <h3>1.1 Personal Information</h3>
          <ul>
            <li><strong>Account Information:</strong> Name, email address, phone number, profile picture</li>
            <li><strong>Authentication Data:</strong> Login credentials, OTP verification codes, Google Sign-In data</li>
            <li><strong>Profile Details:</strong> Preferences, saved properties, favorite listings</li>
            <li><strong>Communication Data:</strong> Messages, reviews, ratings, support inquiries</li>
            <li><strong>Booking Information:</strong> Property viewing appointments, consultation requests</li>
          </ul>

          <h3>1.2 Technical Information</h3>
          <ul>
            <li><strong>Device Data:</strong> IP address, browser type, operating system, device identifiers</li>
            <li><strong>Usage Analytics:</strong> Pages visited, time spent, click patterns, search queries</li>
            <li><strong>Location Data:</strong> General location for property recommendations (with consent)</li>
            <li><strong>Cookies & Tracking:</strong> Session data, preferences, analytics cookies</li>
          </ul>

          <h3>1.3 Third-Party Information</h3>
          <ul>
            <li><strong>Social Media:</strong> Information from Google Sign-In or other connected accounts</li>
            <li><strong>Property Data:</strong> Information from property agents, owners, and listing partners</li>
            <li><strong>Payment Information:</strong> Processed securely through third-party payment providers</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>2. How We Use Your Information</h2>
          
          <h3>2.1 Core Services</h3>
          <ul>
            <li>Create and manage your user account</li>
            <li>Provide personalized property recommendations</li>
            <li>Process booking requests and appointments</li>
            <li>Enable communication with agents and property owners</li>
            <li>Maintain your favorites and search history</li>
          </ul>

          <h3>2.2 Communication & Support</h3>
          <ul>
            <li>Send OTP verification codes via SMS and email</li>
            <li>Provide customer support and respond to inquiries</li>
            <li>Send important platform updates and notifications</li>
            <li>Deliver booking confirmations and reminders</li>
          </ul>

          <h3>2.3 Platform Improvement</h3>
          <ul>
            <li>Analyze usage patterns to improve user experience</li>
            <li>Develop new features and services</li>
            <li>Conduct research and analytics</li>
            <li>Optimize platform performance and security</li>
          </ul>

          <h3>2.4 Marketing & Promotions (Optional)</h3>
          <ul>
            <li>Send promotional emails about new properties (with consent)</li>
            <li>Share relevant market insights and updates</li>
            <li>Provide personalized offers and recommendations</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>3. Legal Basis for Processing</h2>
          <p>We process your personal information based on:</p>
          <ul>
            <li><strong>Contract Performance:</strong> To provide our services and fulfill our obligations</li>
            <li><strong>Legitimate Interest:</strong> To improve our platform and prevent fraud</li>
            <li><strong>Consent:</strong> For marketing communications and optional features</li>
            <li><strong>Legal Compliance:</strong> To comply with applicable laws and regulations</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>4. Information Sharing and Disclosure</h2>
          <p>We do not sell, rent, or trade your personal information. We may share information with:</p>
          
          <h3>4.1 Service Providers</h3>
          <ul>
            <li><strong>SMS/Email Services:</strong> AfricasTalking (SMS), Gmail SMTP (email) for OTP delivery</li>
            <li><strong>Analytics:</strong> Google Analytics for usage insights</li>
            <li><strong>Maps & Location:</strong> Google Maps for property locations</li>
            <li><strong>Cloud Storage:</strong> Secure hosting and data storage providers</li>
          </ul>

          <h3>4.2 Property Partners</h3>
          <ul>
            <li>Property agents and owners (for booking and inquiry purposes)</li>
            <li>Verified real estate professionals in our network</li>
          </ul>

          <h3>4.3 Legal Requirements</h3>
          <ul>
            <li>Law enforcement agencies when required by law</li>
            <li>Regulatory authorities for compliance purposes</li>
            <li>Legal proceedings and court orders</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>5. Data Security and Protection</h2>
          <ul>
            <li><strong>Encryption:</strong> All data transmission is encrypted using SSL/TLS</li>
            <li><strong>Secure Storage:</strong> Personal data is stored in secure, access-controlled databases</li>
            <li><strong>Authentication:</strong> Multi-factor authentication options (OTP, Google Sign-In)</li>
            <li><strong>Access Controls:</strong> Limited access to personal data on a need-to-know basis</li>
            <li><strong>Regular Audits:</strong> Security assessments and vulnerability testing</li>
            <li><strong>Data Minimization:</strong> We collect only necessary information for our services</li>
          </ul>
          <p><em>Note: While we implement robust security measures, no method of transmission over the Internet is 100% secure.</em></p>
        </section>

        <section className="privacy-section">
          <h2>6. Your Privacy Rights</h2>
          
          <h3>6.1 Access and Control</h3>
          <ul>
            <li><strong>Account Access:</strong> View and update your profile information</li>
            <li><strong>Data Portability:</strong> Request a copy of your personal data</li>
            <li><strong>Correction:</strong> Update or correct inaccurate information</li>
            <li><strong>Deletion:</strong> Request deletion of your account and personal data</li>
          </ul>

          <h3>6.2 Communication Preferences</h3>
          <ul>
            <li>Opt out of promotional emails at any time</li>
            <li>Manage notification preferences in your account settings</li>
            <li>Control cookie preferences through browser settings</li>
          </ul>

          <h3>6.3 Data Retention</h3>
          <ul>
            <li>Active accounts: Data retained while account is active</li>
            <li>Inactive accounts: Data may be deleted after 2 years of inactivity</li>
            <li>Legal requirements: Some data retained longer for compliance purposes</li>
            <li>Deleted accounts: Most data deleted within 30 days of account deletion</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>7. Cookies and Tracking Technologies</h2>
          
          <h3>7.1 Types of Cookies We Use</h3>
          <ul>
            <li><strong>Essential Cookies:</strong> Required for platform functionality and security</li>
            <li><strong>Performance Cookies:</strong> Help us understand how users interact with our platform</li>
            <li><strong>Functional Cookies:</strong> Remember your preferences and settings</li>
            <li><strong>Analytics Cookies:</strong> Provide insights into usage patterns and improvements</li>
          </ul>

          <h3>7.2 Managing Cookies</h3>
          <ul>
            <li>You can control cookies through your browser settings</li>
            <li>Disabling certain cookies may affect platform functionality</li>
            <li>We respect "Do Not Track" browser settings where possible</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>8. International Data Transfers</h2>
          <p>Your information may be transferred to and processed in countries other than Kenya, including:</p>
          <ul>
            <li>United States (Google services, cloud hosting)</li>
            <li>European Union (data processing partners)</li>
            <li>Other countries where our service providers operate</li>
          </ul>
          <p>We ensure appropriate safeguards are in place for international transfers.</p>
        </section>

        <section className="privacy-section">
          <h2>9. Children's Privacy</h2>
          <p>LOFT STUDIO is not intended for users under 18 years of age. We do not knowingly collect personal information from children. If we become aware that we have collected information from a child, we will take steps to delete it promptly.</p>
        </section>

        <section className="privacy-section">
          <h2>10. Data Protection Act Compliance (Kenya)</h2>
          
          <h3>10.1 Data Controller Registration</h3>
          <ul>
            <li><strong>LOFT STUDIO is registered as a Data Controller</strong> with the Office of the Data Protection Commissioner (ODPC) in compliance with the Kenya Data Protection Act, 2019</li>
            <li><strong>Registration Number:</strong> [To be updated upon ODPC registration]</li>
            <li>We maintain current registration and comply with all ODPC requirements</li>
            <li>Our data processing activities are conducted in accordance with approved data protection policies</li>
          </ul>

          <h3>10.2 High-Value Client Data Protection</h3>
          <ul>
            <li><strong>Extra security for VIP clients:</strong> We implement additional security measures for diaspora and high-net-worth clients</li>
            <li><strong>No spam, ever:</strong> Advanced monitoring systems to prevent unauthorized access to client contact information</li>
            <li><strong>Your privacy matters:</strong> Strict controls to prevent client phone numbers and emails from being shared with unauthorized third parties</li>
            <li><strong>Quick response:</strong> Immediate breach notification procedures in compliance with ODPC requirements</li>
          </ul>
          <div className="casual-note">
            <p>Basically... We know diaspora clients are valuable targets for spam. We take extra care to protect your contact information from being leaked to random brokers.</p>
          </div>

          <h3>10.3 Data Subject Rights (Kenya DPA)</h3>
          <ul>
            <li><strong>Right to Access:</strong> Request copies of your personal data we hold</li>
            <li><strong>Right to Rectification:</strong> Correct inaccurate or incomplete data</li>
            <li><strong>Right to Erasure:</strong> Request deletion of your personal data</li>
            <li><strong>Right to Restrict Processing:</strong> Limit how we use your data</li>
            <li><strong>Right to Data Portability:</strong> Receive your data in a structured format</li>
            <li><strong>Right to Object:</strong> Object to processing for marketing purposes</li>
            <li><strong>Right to Complain:</strong> Lodge complaints with the ODPC</li>
          </ul>

          <h3>10.4 ODPC Contact Information</h3>
          <p>If you wish to file a complaint about our data processing practices, you may contact:</p>
          <ul className="contact-list">
            <li><strong>Office of the Data Protection Commissioner (ODPC)</strong></li>
            <li><strong>Website:</strong> www.odpc.go.ke</li>
            <li><strong>Email:</strong> info@odpc.go.ke</li>
            <li><strong>Phone:</strong> +254 20 2628 000</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>11. Data Protection Penalties and Liability</h2>
          
          <h3>11.1 Penalty Awareness</h3>
          <ul>
            <li><strong>We take this seriously:</strong> Kenya Data Protection Act penalties can result in fines up to KES 5,000,000 or imprisonment</li>
            <li><strong>Our commitment:</strong> We maintain strict compliance to protect both our users and our business</li>
            <li><strong>Regular check-ups:</strong> Ongoing compliance reviews and security assessments</li>
            <li><strong>Trained team:</strong> All personnel are trained on data protection requirements</li>
          </ul>
          <div className="casual-note">
            <p>Basically... Data protection laws in Kenya are strict, and we make sure we follow them properly to keep everyone safe.</p>
          </div>

          <h3>11.2 User Responsibility</h3>
          <ul>
            <li><strong>Accurate Information:</strong> Users must provide accurate personal information</li>
            <li><strong>Account Security:</strong> Users are responsible for maintaining account security</li>
            <li><strong>Reporting Breaches:</strong> Users should report suspected security incidents immediately</li>
            <li><strong>Consent Management:</strong> Users can withdraw consent for non-essential processing at any time</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>12. Compliance and Regulatory Information</h2>
          <p>This Privacy Policy is designed to comply with:</p>
          <ul>
            <li><strong>Kenya Data Protection Act, 2019</strong> - Full compliance including ODPC registration</li>
            <li><strong>General Data Protection Regulation (GDPR)</strong> - For EU data subjects</li>
            <li><strong>California Consumer Privacy Act (CCPA)</strong> - For California residents</li>
            <li>Other applicable privacy and data protection laws</li>
          </ul>
        </section>

        <section className="privacy-section">
          <h2>13. Changes to This Privacy Policy</h2>
          <p>We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. Material changes will be communicated through:</p>
          <ul>
            <li>Email notifications to registered users</li>
            <li>Prominent notices on our platform</li>
            <li>In-app notifications</li>
          </ul>
          <p>Continued use of our services after changes constitutes acceptance of the updated policy.</p>
        </section>

        <section className="privacy-section">
          <h2>14. Contact Us</h2>
          <p>If you have any questions, concerns, or requests regarding this Privacy Policy or your personal data, please contact us:</p>
          <ul className="contact-list">
            <li><strong>Email:</strong> <a href="mailto:privacy@loftstudio.com" className="contact-link">privacy@loftstudio.com</a></li>
            <li><strong>Support:</strong> <a href="mailto:support@loftstudio.com" className="contact-link">support@loftstudio.com</a></li>
            <li><strong>Phone:</strong> +254 791 488 881</li>
            <li><strong>Address:</strong> Nairobi, Kenya</li>
          </ul>
        </section>

        <div className="privacy-footer">
          <p>
            <a href="/terms" className="footer-link">Terms & Conditions</a> | 
            <a href="/privacy" className="footer-link">Privacy Policy</a>
          </p>
        </div>
      </div>
    </div>
  );
}

export default PrivacyPolicy;