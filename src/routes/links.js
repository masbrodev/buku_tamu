const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/add', isLoggedIn, (req, res) => {
    res.render('links/add');
});

router.post('/add', isLoggedIn, async (req, res) => {
    const { Nama, Alamat, Tujuan, Keperluan } = req.body;
    const newLink = {
        User_id: req.user.id,
        Nama,
        Alamat,
        Tujuan,
        Keperluan
    };
    await pool.query('INSERT INTO links SET ?', [newLink]);
    req.flash('success', 'Tersimpan');
    res.redirect('/');
});

router.get('/', isLoggedIn, async(req, res) => {
    const links = await pool.query('SELECT * FROM links WHERE User_id = ?', [req.user.id]);
    res.render('links/list', {links : links});
});
    
// router.get('/', isLoggedIn, async(req, res) => {
//     const links =  await pool.query('SELECT * FROM links WHERE Created_at LIKE "2019-07-04 %:%:%"');
//     res.render('links/list', {links: links});
// });


router.get('/delete/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    await pool.query('DELETE FROM links WHERE ID = ?', [ID]);
    req.flash('success', 'Berhasil Dihapus');
    res.redirect('/links');
});

router.get('/detail/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const link = await pool.query('SELECT * FROM links WHERE ID = ?', [ID]);
    res.render('links/detail', {link: link[0]});
});

router.get('/edit/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const link = await pool.query('SELECT * FROM links WHERE ID = ?', [ID]);
    res.render('links/edit', {link: link[0]});
});

router.post('/edit/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const { Nama, Alamat, Tujuan, Keperluan } = req.body;
    const editedLink = {
        Nama,
        Alamat,
        Tujuan,
        Keperluan
    };
    await pool.query('UPDATE links SET ? WHERE ID = ?', [editedLink, ID]);
    req.flash('success', 'Data Berhasil di Edit');
    res.redirect('/links');
});

router.get('/pesan/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const link = await pool.query('SELECT * FROM links WHERE ID = ?', [ID]);
    res.render('links/pesan', {link: link[0]});
});

router.post('/pesan/:ID', isLoggedIn, async(req, res) => {
    const { ID } = req.params;
    const { Pesan } = req.body;
    const PesanLink = {
        Pesan
    };
    await pool.query('UPDATE links SET ? WHERE ID = ?', [PesanLink, ID]);
    req.flash('success', 'Pesan Anda Akan Dikirim');
    res.redirect('/links');
});

module.exports = router;